/*
 * $Header: /home/fitz/forrest/xml-forrest/scratchpad/forrestdoc/src/java/org/apache/forrest/forrestdoc/java/src/symtab/ArrayDef.java,v 1.2 2004/02/19 23:53:02 nicolaken Exp $
 * $Revision: 1.2 $
 * $Date: 2004/02/19 23:53:02 $
 *
 * ====================================================================
 *
 * The Apache Software License, Version 1.1
 *
 * Copyright (c) 1999-2002 The Apache Software Foundation.  All rights
 * reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * 3. The end-user documentation included with the redistribution, if
 *    any, must include the following acknowlegement:
 *       "This product includes software developed by the
 *        Apache Software Foundation (http://www.apache.org/)."
 *    Alternately, this acknowlegement may appear in the software itself,
 *    if and wherever such third-party acknowlegements normally appear.
 *
 * 4. The names "The Jakarta Project", "Alexandria", and "Apache Software
 *    Foundation" must not be used to endorse or promote products derived
 *    from this software without prior written permission. For written
 *    permission, please contact apache@apache.org.
 *
 * 5. Products derived from this software may not be called "Apache"
 *    nor may "Apache" appear in their names without prior written
 *    permission of the Apache Group.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
 * ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 * ====================================================================
 *
 * This software consists of voluntary contributions made by many
 * individuals on behalf of the Apache Software Foundation.  For more
 * information on the Apache Software Foundation, please see
 * <http://www.apache.org/>.
 *
 */
package org.apache.forrest.forrestdoc.java.src.symtab;

/**
 * Definition of an array type.  Note that this is not currently used in the
 * cross reference tool, but you would define something like this if you
 * wanted to make the tool complete.
 */
class ArrayDef extends Definition implements TypedDef {

    // ==========================================================================
    // ==  Class Variables
    // ==========================================================================

    /** The base type for the Array */
    private Definition type;

    // ==========================================================================
    // ==  Methods
    // ==========================================================================

    /**
     * Constructor to create a new array type
     * 
     * @param name        
     * @param occ         
     * @param parentScope 
     */
    ArrayDef(String name, // the name of the symbol
             Occurrence occ, // the location of its def
             ScopedDef parentScope) {    // scope containing the def

        super(name, occ, parentScope);

        // System.out.println("new ArrayDef");
    }

    /**
     * return the base type of the array
     * 
     * @return 
     */
    public Definition getType() {
        return type;
    }

    /**
     * Write information about the array to the taglist
     * 
     * @param tagList 
     */
    public void generateTags(HTMLTagContainer tagList) {

        /*
         * out.println(getQualifiedName() + "[]  (Array) " + getDef());
         * listReferences(out);
         */
    }

    /**
     * Resolves references to other symbols used by this symbol
     */
    void resolveTypes() {

        // would need to lookup the base type in the symbol table
    }

    /**
     * Return a String representation of the class
     * 
     * @return 
     */
    public String toString() {
        return "ArrayDef [" + type.getQualifiedName() + "]";
    }

    /**
     * Method getOccurrenceTag
     * 
     * @param occ 
     * @return 
     */
    public HTMLTag getOccurrenceTag(Occurrence occ) {
        return null;
    }
}
