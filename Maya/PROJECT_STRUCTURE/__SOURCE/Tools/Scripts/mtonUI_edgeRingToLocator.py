from pymel.core import *

def mt_UI():
    """
    UI : Set up windows for options and defaults
    """
    if(window('mt_UI', query=True, exists=True)):
        deleteUI('mt_UI', window=True)    
    mtSVG_UI = window('mt_UI', t ='AIE_rigTool', menuBar=True,  w=200) # rtf=True, bgc=[0.0, 1.0, 0.0]) 

    columnLayout( adj = True)  
    rowColumnLayout(nc=1)
    button(l =  ' edgeRing_ToLocator     ' , command = 'mt_edgeRing_ToLocator()                         ' )
    button(l =  ' down                   ' , command = 'print("uv: DOWN")                               ' )
    button(l =  ' left                   ' , command = 'print("uv: LEFT")                               ' )
    button(l =  ' right                  ' , command = 'print("uv: RIGHT")                              ' )
    button(l =  ' HelloWorld             ' , command = 'print("Hello World")                            ' )
  
    showWindow()
          
mt_UI()

def mt_edgeRing_ToLocator():    
    s_Face = ls(sl=True) #select cross section(face) of obj   
    s_Vert = polyListComponentConversion(s_Face, toVertex=True)
    s_Clst = cluster(s_Vert, n='delete_Cluster') 
    cl_Pos = xform(s_Clst, q=True, ws=True, rp=True) 
    s_Null = spaceLocator(n='delete_Locator') #, a=True, p=cl_Pos) #WTF : this places shape not xform?
    xform( s_Null, a=True, t=cl_Pos)
    s_Null.getShape().setAttr('localScale', [0.1, 0.1, 0.1]) # adjust scale
    delete(s_Clst) #clean up cluster
