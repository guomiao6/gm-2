package com.gm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class U3DController {
	
	@RequestMapping("U3DNightmare.act")
	public String U3DNightmare()
	{
		return "U3D/U3DNightmare";
	}
	@RequestMapping("U3DDark.act")
	public String U3DDark()
	{
		return "U3D/U3DDark";
	}
	@RequestMapping("U3DCS.act")
	public String U3DCS()
	{
		return "U3D/U3DCS";
	}
	@RequestMapping("U3DCandy.act")
	public String U3DCandy()
	{
		return "U3D/U3DCandy";
	}
	@RequestMapping("U3DRun.act")
	public String U3DRun()
	{
		return "U3D/U3DRun";
	}
	@RequestMapping("U3DCar.act")
	public String U3DCar()
	{
		return "U3D/U3DCar";
	}
}
