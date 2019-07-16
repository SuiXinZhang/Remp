package com.remp.system.tools;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ConvertUtil 
{
    // inputStreamתoutputStream
    public static ByteArrayOutputStream parse(final InputStream in) throws Exception 
    {
        final ByteArrayOutputStream swapStream = new ByteArrayOutputStream();
        int ch;
        while ((ch = in.read()) != -1) {
            swapStream.write(ch);
        }
        return swapStream;
    }

    // outputStreamתinputStream
    public static ByteArrayInputStream parse(final OutputStream out) throws Exception
    {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        baos = (ByteArrayOutputStream) out;
        final ByteArrayInputStream swapStream = new ByteArrayInputStream(baos.toByteArray());
        return swapStream;
    }

    // inputStreamתString
    public static String parse_String(final InputStream in) throws Exception 
    {
        final ByteArrayOutputStream swapStream = new ByteArrayOutputStream();
        int ch;
        while ((ch = in.read()) != -1) {
            swapStream.write(ch);
        }
        return swapStream.toString();
    }

    // OutputStream תString
    public static String parse_String(final OutputStream out) throws Exception
    {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        baos = (ByteArrayOutputStream) out;
        final ByteArrayInputStream swapStream = new ByteArrayInputStream(baos.toByteArray());
        return swapStream.toString();
    }

    // StringתinputStream
    public static ByteArrayInputStream parse_inputStream(final String in) throws Exception 
    {
        final ByteArrayInputStream input = new ByteArrayInputStream(in.getBytes());
        return input;
    }

    // String תoutputStream
    public static ByteArrayOutputStream parse_outputStream(final String in) throws Exception
    {
        return parse(parse_inputStream(in));
    }
}