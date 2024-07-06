@tool
class_name Dokimon
extends Control

signal mori

@export var salud_maxima = 100
@export var salud = salud_maxima

func fui_atacado(danio):
	salud -= danio
	if(salud <= 0):
		mori.emit()
