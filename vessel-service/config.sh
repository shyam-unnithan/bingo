export ENABLE_DYNATRACE=true
export DYNATRACE_COLLECTOR='10.52.39.63'
export DYNATRACE_PORT='9998'
export OSE_CLUSTER_TOP_DOMAIN='cpass.service.dev'
export OSE_CLUSTER_CONSOLE='console.'"$OSE_CLUSTER_TOP_DOMAIN"':8443'
export OSE_CLUSTER_ROUTER='apps.'"$OSE_CLUSTER_TOP_DOMAIN"
export DST_DOCKER_REGISTRY_HOST='docker-registry-default.'"$OSE_CLUSTER_ROUTER"
export CONTAINER_IMAGE_BASE_URL='172.30.200.79:5000'
export INSECURE_SKIP_TLS_VERIFY=true
export REPLICAS=1
export GIT_USERNAME=csp-buildbot
export AD_DOMAIN='GLOBALTEST.ANZ.COM'
export SOPS_PGP_FP='67A4 0CBA ECBE 303F 988C  5F56 ED49 9794 4182 A71C'
export SOPS_PUBLIC_KEY='LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUlOQkZvRDZIUUJFQURzd1ZkQW1yVFZ5NnBlbWs5R3JvYmN0UndkTzRKeVNiTUVhTVJSV2FaTGUxcFl0cTg1CldpMzRwNXBzZVNXYm1NaGdoNzljTzY3N3BJWTc2d29vUXd0dlBocmNhRGx0eXl4Qmg4MUJMdTl6QXNMUWpHQ2EKNjJESWg5M3hhNHkwTGZQYTFQRkd3Zm9wanNqcUZPYWtCUkpPZnZXTlk5WmdkdExCWEdDM2tVZWRldWhaTTZzbQpFVEJ1aS9TakVGeURXYlFJWHM1K2lEbjlEb05PSVBYL3A4V2J3NGRyWHJwaGl1QmpPVFlnQ3FvNWw3aWNIczFkCkNtK3ZTNjVEVGZYbkNzVHRpeVRWWnp6NUc3OUxIY2syNUdjR1FsMzdCNE51QmRkbmMzQ2d3dUhBZEgyRDdRMmUKKysrUDlkRldjcWw0TEZveHJGaXVCeDNGY3h2R0VIaHJJaVl2azN3M21zUmthSlo4QURLb2pXdkhaejkzOERFawpLdkV0K0RqejRZZ2tOM1NUMEh3WGw2bVJIbEFBZ1BYTGlKd1ZhZEx4Q1VFQlJwaWQ1M21HZ3NoOWpkbmlmMTUvCkRtR3kvR0hjekZ1ZWw0blZjdkpSaXVWL2IxaXFEVTVZd0JmZ09uMmJJUmg3WmxjeGJ2d0Q3cGxFYUgrQWVsSW4KRndmdE0yVmF1ZHNrT2FQR1FGam1pMGlGUnJiaFh4MTltUVFWS3NNbUFvV295K1VISWtwajJQRDRyU3UyMmhadgpzQ0Z3WG1vN3hhNlFpaWpkN1ZiOXF1NzROcUp1OWFVcW9pR2VQU0NqMHJJaHdNS0s3US9MMnc0TzByMUw4MThyClhoU3Z5UTJ5WVZteVlFVlpsUkZSSW53bVpicW5qeUVvamZub2M1amVUMzJNR3VGMUpjQ0tDUlVNTVFBUkFRQUIKdER4MU1tOXpaU0J6WTNKcGNIUnpJQ2hEVTFBZ2RVUmxjR3h2ZVNCVFQxQlRJR1JsZGlrZ1BIVXliM05sTFhOagpjbWx3ZEhOQVlXNTZMbU52YlQ2SkFrNEVFd0VJQURnV0lRUm5wQXk2N0w0d1A1aU1YMWJ0U1plVVFZS25IQVVDCldnUG9kQUliTHdVTENRZ0hBZ1lWQ0FrS0N3SUVGZ0lEQVFJZUFRSVhnQUFLQ1JEdFNaZVVRWUtuSEZtREVBQ0gKQzJsOGthVk1CV1luQXNHYWIxTGxCdlMzZmd5dnZ6OGhHdDN4Zzl4QXdrbU9Ld2pOODViTmd6cFMvTFUwNUREUwpSTktteUtUblJJWUkyVVZiL2dIa0JoR0Z2VXl1UDZ2RHF5WlQ4NlpwblhYWCtaZnB4R0NUWjMyVUlIN1huOXJDCkxydWVuSEtsajNuSzgxZ3BPOW0yblRDYWNwYUc3dkZyZG1sNGVPSUFVYmFoWTR0MzEyQzlaOFN0S3NJdkFqaEgKaXRONEV5SXBQa1dKSkUzL3BhUlowYlpUYTdIcUx1cnNlYUh3VUZIU0dvYXA1QlJ1ZldlWkhyd1lnU21nYVpVdApCbWFhSm1IRTdaNGUxaC83dThKUHQzOFVGUGNGYXJuckJpZDE2U2JVQThUYTVlQUhBNjdLNXdFS2RoVVQ3Vlg0Ckh1WVA1dmNOQUZpbnlOTEdzc0U3WS9kd1FVVnRRZzJFWVpJZmEwcDhtUURBbHMraDl6YVgrd1o1ckhkdEFzODMKTkJkZFVHa1RvRmlXY1ByUCs4WkZPNlc1SjRzazNqelJJSnFMc01hUWtiRDBtZEUza0VWaU1hSFRMcmJjZ3VHaQpZTkg4YWVKRWdYRzRVMmlLd1dnbTFrM1JObk1mZi93NGU1cjFkSzZTOVFGZ0xOOGNMeXFjSlo1TDl5VWlaVlJhCjJtb0c3Si9vcWZtOVpUTjJ5TkwxWDg3ZjVMdDhxRTcyN0FIamZZYkxpcmRCQ0hFWmJoVS9OZHQxcVBxeWhaRkQKNnE1djd5Z0V0UWdYRDB2U0tWK3I3MlY2OS82elp4NmtWVDJ5ckIzeSs5ZmkwRHhzTWRxeXh6dWl6TGd3ZDcreApQOERSazQ0QUxhSERKOUQ1VlE5ZjdZR2NKRXloSlBmeWNtNEE2RE9YV3c9PQo9ZzludQotLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCg=='
export COM_ANZ_CSP_LOGGING_LEVEL_CSP=DEBUG
export COM_ANZ_CSP_LOGGING_LEVEL_ROOT=DEBUG
export STI_HOSTNAME='stateless-token-issuer-'"$NAMESPACE"'.'"$OSE_CLUSTER_ROUTER"