////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2009 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package mx.charts.series.items
{

import mx.charts.ChartItem;
import mx.charts.series.ColumnSeries;
import mx.graphics.IFill;

/**
 *  Represents the information required to render an item as part of a ColumnSeries. The ColumnSeries class passes these items to its itemRenderer when rendering.
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Flex 3
 */
public class ColumnSeriesItem extends ChartItem
{
    include "../../../core/Version.as";

    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    /**
     *  Constructor.
     *  @param  element The owning series.
     *  @param  data    The item from the dataProvider that this ChartItem represents.
     *  @param  index   The index of the item from the series's dataProvider.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public function ColumnSeriesItem(element:ColumnSeries = null,
                                     data:Object = null, index:uint = 0)
    {
        super(element, data, index);
    }
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------

    //----------------------------------
    // fill
    //----------------------------------
    [Inspectable(environment="none")]
    
    /**
     *  Holds the fill color of the item.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var fill:IFill;
    
    /**
     *  @private
     */
    mx_internal var labelText:String;
    
    /**
     *  @private
     */
    mx_internal var label:Object;

    /**
     *  @private
     */
    mx_internal var labelX:Number;
    
    /**
     *  @private
     */
    mx_internal var labelY:Number;
    
    /**
     *  @private
     */
    mx_internal var labelWidth:Number = 1;
    
    /**
     *  @private
     */
    mx_internal var labelHeight:Number = 1;
    
    /**
     * @private
     */
    mx_internal var labelTextWidth:Number = 1; 
    /**
     * @private
     */
    mx_internal var labelIsHorizontal:Boolean = true; 
    
    //----------------------------------
    //  x
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The x value of this item converted into screen coordinates.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var x:Number;
    
    //----------------------------------
    //  xFilter
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The x value of this item, filtered against the horizontal axis of the containing chart. This value is <code>NaN</code> if the value lies outside the axis's range.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var xFilter:Number;

    //----------------------------------
    //  xNumber
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The x value of this item, converted to a number by the horizontal axis of the containing chart.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var xNumber:Number;

    //----------------------------------
    //  xValue
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The x value of this item.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var xValue:Object;

    //----------------------------------
    //  y
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The y value of this item converted into screen coordinates
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var y:Number;
    
    //----------------------------------
    //  yFilter
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The y value of this item, filtered against the vertical axis of the containing chart. This value is <code>NaN</code> if the value lies outside the axis's range.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var yFilter:Number;

    //----------------------------------
    //  yNumber
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The y value of this item, converted to a number by the vertical axis of the containing chart.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var yNumber:Number;

    //----------------------------------
    //  yValue
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The y value of this item.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var yValue:Object;

    //----------------------------------
    //  min
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The minimum value of this item converted into screen coordinates. The value of this field is <code>undefined</code> if the ColumnSeries is not stacked and its <code>minField</code> property is not set.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var min:Number;

    //----------------------------------
    //  minFilter
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The minimum value of this item, filtered against the vertical axis of the containing chart. 
     *  This value is <code>NaN</code> if the value lies outside the axis' range.
     *  The value of this field is <code>undefined</code> if the ColumnSeries is not stacked and its <code>minField</code> property is not set.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var minFilter:Number;

    //----------------------------------
    //  minNumber
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The minimum value of this item, converted to a number by the vertical axis of the containing chart.
     *  The value of this field is <code>undefined</code> if the ColumnSeries is not stacked and its <code>minField</code> property is not set.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var minNumber:Number;

    //----------------------------------
    //  minValue
    //----------------------------------

    [Inspectable(environment="none")]

    /**
     *  The miniumum value of this item.
     *  The value of this field is <code>undefined</code> if the ColumnSeries is not stacked and its <code>minField</code> property is not set.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    public var minValue:Object;

    //--------------------------------------------------------------------------
    //
    //  Overridden methods
    //
    //--------------------------------------------------------------------------
    
    /**
     *  @private
     *  Returns a copy of this ChartItem.
     */
    override public function clone():ChartItem
    {       
        var result:ColumnSeriesItem = new ColumnSeriesItem(ColumnSeries(element),item,index);
        result.itemRenderer = itemRenderer;
        return result;
    }
}

}
