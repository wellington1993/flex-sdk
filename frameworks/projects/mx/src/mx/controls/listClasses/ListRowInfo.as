////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2005-2006 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package mx.controls.listClasses
{

/**
 *  Used by the list-based classes to store information about their IListItemRenderers.
 *
 *  @see mx.controls.listClasses.ListBase#rowInfo
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Flex 3
 */
public class ListRowInfo
{
	include "../../core/Version.as";

	//--------------------------------------------------------------------------
	//
	//  Constructor
	//
	//--------------------------------------------------------------------------

	/**
	 *  Constructor.
	 *
	 *  @param y The y-position value for the row.
	 *
	 *  @param height The height of the row including margins.
	 *
	 *  @param uid The unique identifier of the item in the dataProvider
	 *
	 *  @param data The item in the dataprovider.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public function ListRowInfo(y:Number, height:Number,
								uid:String, data:Object = null)
	{
		super();

		this.y = y;
		this.height = height;
		this.uid = uid;
		this.data = data;
	}

	//--------------------------------------------------------------------------
	//
	//  Properties
	//
	//--------------------------------------------------------------------------

	//----------------------------------
	//  data
	//----------------------------------

	/**
	 *  The item in the dataprovider. 
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public var data:Object; 

	//----------------------------------
	//  height
	//----------------------------------

	/**
	 *  The height of the row including margins.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public var height:Number; 

	//----------------------------------
	//  itemOldY
	//----------------------------------

	/**
	 *  The last Y value for the renderer.
	 *  Used in Tree's open/close effects.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public var itemOldY:Number; 

	//----------------------------------
	//  oldY
	//----------------------------------

	/**
	 *  The last Y value for the row.
	 *  Used in Tree's open/close effects.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public var oldY:Number; 

	//----------------------------------
	//  uid
	//----------------------------------

	/**
	 *  The unique identifier of the item in the dataProvider
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public var uid:String; 

	//----------------------------------
	//  y
	//----------------------------------

	/**
	 *  The y-position value for the row.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public var y:Number; 
}

}
