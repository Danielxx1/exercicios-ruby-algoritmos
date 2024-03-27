# Modelo Edge (app/models/edge.rb)
class Edge < ApplicationRecord
    validates_presence_of :source, :destination, :weight
  end
  
  # Controlador (app/controllers/mst_controller.rb)
  class MstController < ApplicationController
    def kruskal_mst
      edges = Edge.all.order(weight: :asc) # Obtém todas as arestas ordenadas por peso
      mst_edges = [] # Arestas na Minimum Spanning Tree
      dsu = {} # Estrutura de dados Disjoint Set Union para verificar ciclos
  
      edges.each do |edge|
        source_parent = find_parent(dsu, edge.source)
        destination_parent = find_parent(dsu, edge.destination)
  
        if source_parent != destination_parent
          # Adiciona a aresta à MST
          mst_edges << edge
          # Une os conjuntos (evita ciclos)
          union_sets(dsu, source_parent, destination_parent)
        end
      end
  
      render json: mst_edges
    end
  
    private
  
    def find_parent(dsu, vertex)
      dsu[vertex] ||= vertex
      dsu[vertex] == vertex ? vertex : find_parent(dsu, dsu[vertex])
    end
  
    def union_sets(dsu, x, y)
      dsu[find_parent(dsu, x)] = find_parent(dsu, y)
    end
  end
  