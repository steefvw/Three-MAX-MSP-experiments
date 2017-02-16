{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 2,
			"revision" : 5,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 278.0, 79.0, 988.0, 857.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-47",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 60.0, 485.0, 47.0 ],
					"presentation_rect" : [ 9.985718, 61.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "Abstraction will translate midinote information into a list with musical information: duration that note was played, octave, chromatic scale degree (0 for C, 1 for C#), start time (cpuclock), velocity and a list of scales that matches to this note (WIP)."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 39.014874,
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 8.0, 485.0, 50.0 ],
					"style" : "",
					"text" : "svw.AnalyzeNote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 213.0, 244.0, 33.0 ],
					"presentation_rect" : [ 151.0, 200.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "Inlet accepts a lists with symbol \"midinote\" followed by the midinote (i) + velocity (i)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 126.0, 360.0, 248.0, 33.0 ],
					"style" : "",
					"text" : "Inlet accepts a lists with symbol \"midinote\" followed by the midinote (i) + velocity (i)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 68.0, 472.0, 383.0, 33.0 ],
					"style" : "",
					"text" : "Use this zl.slice to go from the full list to one list with numeric details (left outlet) and a second list with matching scales (right outlet)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 360.0, 102.0, 22.0 ],
					"style" : "",
					"text" : "svw.AnalyzeNote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.985718, 298.0, 150.0, 60.0 ],
					"presentation_rect" : [ 224.985718, 95.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "This only works when you play and release one note at a time; before playing the next note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.985718, 430.5, 687.0, 20.0 ],
					"presentation_rect" : [ 270.735718, 685.5, 0.0, 0.0 ],
					"style" : "",
					"text" : "list: 1. duration (ms f), 2. octave (i), 3. chromatic scale degree (i), 4. starttime (cpuclock f), 5. velocity (i), 6. list (matching scales)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 548.0, 179.0, 22.0 ],
					"style" : "",
					"text" : "print Dur-Oct-ScalDeg-Start-Vel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 47.0, 512.0, 120.0, 22.0 ],
					"style" : "",
					"text" : "print matchingscales"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 9.0, 472.0, 57.0, 22.0 ],
					"style" : "",
					"text" : "zl.slice 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.985718, 406.5, 429.0, 22.0 ],
					"style" : "",
					"text" : "88.898102 2 0 5989351. 100 CNatMin ANatMin GMaj FMaj CMaj"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 15.530085,
					"id" : "obj-155",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 505.985718, 77.5, 204.0, 93.0 ],
					"style" : "",
					"text" : "NOTE: coll scales is incomplete. this is just a set of scales that should be enough to test if everything works.",
					"textcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 9,
						"data" : [ 							{
								"key" : 1,
								"value" : [ "CMaj", "C", "D", "E", "F", "G", "A", "B" ]
							}
, 							{
								"key" : 2,
								"value" : [ "DMaj", "D", "E", "F#", "G", "A", "B", "C#" ]
							}
, 							{
								"key" : 3,
								"value" : [ "EMaj", "E", "F#", "G#", "A", "B", "C#", "D#" ]
							}
, 							{
								"key" : 4,
								"value" : [ "FMaj", "F", "G", "A", "Bb", "C", "D", "E" ]
							}
, 							{
								"key" : 5,
								"value" : [ "GMaj", "G", "A", "B", "C", "D", "E", "F#" ]
							}
, 							{
								"key" : 6,
								"value" : [ "AMaj", "A", "B", "C#", "D", "E", "F#", "G#" ]
							}
, 							{
								"key" : 7,
								"value" : [ "BMaj", "B", "C#", "D#", "E", "F#", "G#", "A#" ]
							}
, 							{
								"key" : 8,
								"value" : [ "ANatMin", "A", "B", "C", "D", "E", "F", "G" ]
							}
, 							{
								"key" : 9,
								"value" : [ "CNatMin", "C", "D", "Eb", "F", "G", "Ab", "Bb" ]
							}
 ]
					}
,
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 505.985718, 199.5, 186.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"style" : "",
					"text" : "coll scales-namefront @embed 1"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 9,
						"data" : [ 							{
								"key" : 1,
								"value" : [ "C", "D", "E", "F", "G", "A", "B", "CMaj" ]
							}
, 							{
								"key" : 2,
								"value" : [ "D", "E", "F#", "G", "A", "B", "C#", "DMaj" ]
							}
, 							{
								"key" : 3,
								"value" : [ "E", "F#", "G#", "A", "B", "C#", "D#", "EMaj" ]
							}
, 							{
								"key" : 4,
								"value" : [ "F", "G", "A", "Bb", "C", "D", "E", "FMaj" ]
							}
, 							{
								"key" : 5,
								"value" : [ "G", "A", "B", "C", "D", "E", "F#", "GMaj" ]
							}
, 							{
								"key" : 6,
								"value" : [ "A", "B", "C#", "D", "E", "F#", "G#", "AMaj" ]
							}
, 							{
								"key" : 7,
								"value" : [ "B", "C#", "D#", "E", "F#", "G#", "A#", "BMaj" ]
							}
, 							{
								"key" : 8,
								"value" : [ "A", "B", "C", "D", "E", "F", "G", "ANatMin" ]
							}
, 							{
								"key" : 9,
								"value" : [ "C", "D", "Eb", "F", "G", "Ab", "Bb", "CNatMin" ]
							}
 ]
					}
,
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 505.985718, 174.5, 128.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"style" : "",
					"text" : "coll scales @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 26.985718, 186.0, 97.0, 22.0 ],
					"style" : "",
					"text" : "svw.simplevoice"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 26.985718, 238.0, 45.0, 45.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 186.0, 111.0, 22.0 ],
					"style" : "",
					"text" : "midinote 48 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 129.0, 101.0, 22.0 ],
					"style" : "",
					"text" : "pianokeydownup"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "pianokeydownup.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/Steefs patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pianokeyboard.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/Steefs patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "svw.simplevoice.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/Steefs patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "svw.AnalyzeNote.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/Steefs patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
