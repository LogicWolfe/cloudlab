#!/bin/bash
DATABASE_NAME=postgres-cloudlab
doctl databases create $DATABASE_NAME --region sgp1 --engine pg
