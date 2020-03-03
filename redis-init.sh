#!/bin/bash
DATABASE_NAME=redis-cloudlab
doctl databases create $DATABASE_NAME --region sgp1 --engine redis
