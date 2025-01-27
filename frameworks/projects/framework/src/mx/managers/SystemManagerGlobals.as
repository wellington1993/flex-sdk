////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2006-2007 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package mx.managers
{

[ExcludeClass]

/**
 *  @private
 */
public class SystemManagerGlobals
{
	public static var topLevelSystemManagers:Array
												  /* of SystemManager */ = [];
    public static var bootstrapLoaderInfoURL:String;

	public static var showMouseCursor:Boolean;

	public static var changingListenersInOtherSystemManagers:Boolean;

	public static var dispatchingEventToOtherSystemManagers:Boolean;

    /**
     *  @private
     *  reference to the info() object from the first systemManager
	 *  in the application..
     */
	public static var info:Object;

    /**
     *  @private
     *  reference to the loaderInfo.parameters object from the first systemManager
	 *  in the application..
     */
	public static var parameters:Object;
}

}

