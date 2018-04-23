package com.stratio.qa.cdtest;

import org.testng.Assert;
import org.testng.annotations.Test;

public class CdTestTest {

    @Test
    public void exampleUnitTest(){
        String[] args = new String[2];
        CdTest.main(args);
        Assert.assertEquals("YES", "YES");
    }
}
