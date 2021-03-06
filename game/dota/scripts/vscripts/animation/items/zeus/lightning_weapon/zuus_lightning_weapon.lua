--============ Copyright (c) Valve Corporation, All rights reserved. ==========
--
-- source1import auto-generated animation script
-- local changes will be overwritten if source1import if run again on this asset
--
-- mdl: models\items\zeus\lightning_weapon\zuus_lightning_weapon.mdl
--
--=============================================================================



-- AsLookLayer
model:CreateSequence(
	{
		name = "@lightning_turns_lookFrame_0",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@lightning_turns", frame = 0, dst = 0 },
			{ cmd = "fetchframe", sequence = "@lightning_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "@lightning_turns_lookFrame_1",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@lightning_turns", frame = 1, dst = 0 },
			{ cmd = "fetchframe", sequence = "@lightning_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "@lightning_turns_lookFrame_2",
		snap = true,
		delta = true,
		hidden = true,
		cmds = {
			{ cmd = "fetchframe", sequence = "@lightning_turns", frame = 2, dst = 0 },
			{ cmd = "fetchframe", sequence = "@lightning_turns", frame = 1, dst = 1 },
			{ cmd = "subtract", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "lightning_turns",
		delta = true,
		poseParamX = model:CreatePoseParameter( "turn", -1, 1, 0, false ),
		sequences = {
			{ "@lightning_turns_lookFrame_0", "@lightning_turns_lookFrame_1", "@lightning_turns_lookFrame_2" }
		}
	}
)

-- AsTurningRun

model:CreateSequence(
	{
		name = "lightning_run",
		sequences = {
			{ "@lightning_run" }
		},
		addlayer = {
			"lightning_turns"
		},
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "lightning", weight = 1 }
		}
	}
)


-- AsTurningRun

model:CreateSequence(
	{
		name = "lightning_run_haste",
		sequences = {
			{ "@lightning_run_haste" }
		},
		addlayer = {
			"lightning_turns"
		},
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "lightning", weight = 1 },
			{ name = "haste", weight = 1 }
		}
	}
)


-- AsTurningRun

model:CreateSequence(
	{
		name = "lightning_run_injured",
		sequences = {
			{ "@lightning_run_injured" }
		},
		addlayer = {
			"lightning_turns"
		},
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 },
			{ name = "injured", weight = 1 },
			{ name = "lightning", weight = 1 }
		}
	}
)
