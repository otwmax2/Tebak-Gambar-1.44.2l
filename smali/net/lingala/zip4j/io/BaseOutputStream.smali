###### Class net.lingala.zip4j.io.BaseOutputStream (net.lingala.zip4j.io.BaseOutputStream)
.class public abstract Lnet/lingala/zip4j/io/BaseOutputStream;
.super Ljava/io/OutputStream;
.source "BaseOutputStream.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
