package com.stratio.qa.cdtest;

import org.testng.Assert;
import org.testng.annotations.Test;

public class CdIT {

    @Test(groups={"integration"})
    public void exampleIntegrationTest() throws Exception{
        String[] args = new String[2];
        CdTest.main(args);
        try {
            System.out.println("Waiting for 1 seconds");
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        Assert.assertEquals("YES", "YES");
        throw new Exception("On purpose exception");
    }

    @Test
    public void classIntegrationTest(){
        CdTest test = new CdTest();
        Assert.assertEquals("YES", "YES");
    }
}
