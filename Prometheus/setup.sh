#!/bin/bash

#Create Namespaces
kubectl create ns monitoring
kubectl create ns ingress-nginx 

#Script Setup: Install Prometheus-Server Kube-State-Metrics Alert-Manager Grafana Node-Exporter Ingress-Controller
kubectl apply -f ./nginx-ingress-controller/manifests
sleep 5
kubectl apply -f ./kube-state-metrics-configs
sleep 5
kubectl apply -f ./kubernetes-node-exporter
sleep 5
kubectl apply -f ./kubernetes-prometheus
sleep 5
kubectl apply -f ./kubernetes-alert-manager
sleep 5
kubectl apply -f ./kubernetes-grafana

