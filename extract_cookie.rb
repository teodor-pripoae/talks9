require 'base64'

session_cookie = <<-STR.strip.gsub(/\n/, '')
BAh7CUkiD3Nlc3Npb25faWQGOgZFRkkiJTZhMTJiNmM4YmFhOGY3ODI1MWQ1ZDI4ZWI1Mzg5MDFiBjsAVEkiEF9jc3JmX3Rva2VuBjsARkkiMStGaUhybUhCMVo3NEFhTkJEeWlqUVFvZk9JdCt6SXBKZit4T2U0WU9FcFE9BjsARkkiGXdhcmRlbi51c2VyLnVzZXIua2V5BjsAVFsISSIJVXNlcgY7AEZbBmkGSSIiJDJhJDEwJDNiRGpTMFpNUUFLL1VJdFprLkgxWC4GOwBUSSIPY2hhbGxlbmdlOQY7AEZJIglDZXZhBjsAVA%3D%3D--ab50ab6be9a3a3455aa7ea1ea4d342af25b560c2
STR

puts Marshal.load(Base64.decode64(session_cookie.split("--")[0]))
