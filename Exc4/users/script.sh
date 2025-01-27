# tech-suppport

openssl genrsa -out tech-support.key 2048

openssl req -new -key tech-support.key -out tech-support.csr -subj "/CN=tech-support/O=tech-supports"

openssl x509 -req \
    -in tech-support.csr \
    -CA ~/.minikube/ca.crt \
    -CAkey ~/.minikube/ca.key \
    -CAcreateserial \
    -out tech-support.crt \
    -days 500

kubectl config set-credentials tech-support \
--client-certificate=tech-support.crt \
--client-key=tech-support.key


kubectl config set-context tech-support \
    --cluster=minikube \
    --namespace=default \
    --user=tech-support


# sre-ingeneer

openssl genrsa -out sre-ingeneer.key 2048

openssl req -new -key sre-ingeneer.key -out sre-ingeneer.csr -subj "/CN=sre-ingeneer/O=sre-ingeneers"

openssl x509 -req \
    -in sre-ingeneer.csr \
    -CA ~/.minikube/ca.crt \
    -CAkey ~/.minikube/ca.key \
    -CAcreateserial \
    -out sre-ingeneer.crt \
    -days 500

kubectl config set-credentials sre-ingeneer \
--client-certificate=sre-ingeneer.crt \
--client-key=sre-ingeneer.key


kubectl config set-context sre-ingeneer \
    --cluster=minikube \
    --namespace=default \
    --user=tech-support

# administrator

openssl genrsa -out administrator.key 2048

openssl req -new -key administrator.key -out administrator.csr -subj "/CN=administrator"

openssl x509 -req \
    -in administrator.csr \
    -CA ~/.minikube/ca.crt \
    -CAkey ~/.minikube/ca.key \
    -CAcreateserial \
    -out administrator.crt \
    -days 500

kubectl config set-credentials administrator \
--client-certificate=administrator.crt \
--client-key=sre-ingeneer.key


kubectl config set-context administrator \
    --cluster=minikube \
    --namespace=default \
    --user=tech-support