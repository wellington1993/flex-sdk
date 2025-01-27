////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2007 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package mx.rpc.xml
{

/**
 * Encodes an ActionScript object graph to XML based on an XML schema.
 * 
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Flex 3
 */
public interface IXMLEncoder
{
    /**
     * Encodes an ActionScript value as XML.
     * 
     * @param value The ActionScript value to encode as XML.
     *
     * @param name The QName of an XML Schema <code>element</code> that
     * describes how to encode the value, or the name to be used for the
     * encoded XML node when a type parameter is also specified.
     *
     * @param type The QName of an XML Schema <code>simpleType</code> or
     * <code>complexType</code> definition that describes how to encode the
     * value.
     *
     * @param definition If neither a top-level element nor type exists in the
     * schema to describe how to encode this value, a custom element definition
     * can be provided.
     *
     * @return Returns an XML encoding of the given ActionScript value.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */ 
    function encode(value:*, name:QName = null, type:QName = null, definition:XML = null):XMLList;

    /**
     * Resets the encoder to its initial state, including resetting any 
     * Schema scope to the top level.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    function reset():void;


    //--------------------------------------------------------------------------
    //
    // Properties
    // 
    //--------------------------------------------------------------------------

    /**
     * The function to be used to escape XML special characters before encoding
     * any simple content.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    function get xmlSpecialCharsFilter():Function;
    function set xmlSpecialCharsFilter(func:Function):void;
    
    /**
     * When strictNillability is set to <code>true</code>, null values
     * are encoded according to XML Schema rules (requires nillable=true
     * to be set in the definition). When strictNillability is set to
     * <code>false</code>, null values are always encoded with the
     * <code>xsi:nil="true"</code> attribute. The default is <code>false</code>.
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
     function get strictNillability():Boolean;

    function set strictNillability(value:Boolean):void;
}

}
