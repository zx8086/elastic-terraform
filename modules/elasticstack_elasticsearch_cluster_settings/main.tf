resource "elasticstack_elasticsearch_cluster_settings" "my_cluster_settings" {
  persistent {
    setting {
      name  = "indices.lifecycle.poll_interval"
      value = "10m"
    }
    setting {
      name  = "indices.recovery.max_bytes_per_sec"
      value = "50mb"
    }
    setting {
      name  = "indices.breaker.total.limit"
      value = "65%"
    }
    setting {
      name       = "xpack.security.audit.logfile.events.include"
      value_list = ["ACCESS_DENIED", "ACCESS_GRANTED"]
    }
  }

  transient {
    setting {
      name  = "indices.breaker.total.limit"
      value = "60%"
    }
  }
}

# {
#   "persistent": {
#     "cluster": {
#       "routing": {
#         "allocation": {
#           "disk": {
#             "watermark": {
#               "flood_stage.frozen.max_headroom": "5GB",
#               "flood_stage": "97%",
#               "high": "95%",
#               "low": "90%",
#               "flood_stage.frozen": "97%",
#               "flood_stage.max_headroom": "5GB",
#               "low.max_headroom": "100GB",
#               "high.max_headroom": "20GB"
#             }
#           }
#         }
#       },
#       "max_shards_per_node": "3000"
#     },
#     "logger": {
#       "org": {
#         "elasticsearch": {
#           "ingest": {
#             "common": {
#               "GrokProcessor": "debug"
#             }
#           }
#         }
#       }
#     }
#   },
#   "transient": {}
# }