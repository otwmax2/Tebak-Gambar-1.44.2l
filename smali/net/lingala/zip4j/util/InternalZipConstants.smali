###### Class net.lingala.zip4j.util.InternalZipConstants (net.lingala.zip4j.util.InternalZipConstants)
.class public interface abstract Lnet/lingala/zip4j/util/InternalZipConstants;
.super Ljava/lang/Object;
.source "InternalZipConstants.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "file.encoding"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->a:Ljava/lang/String;

    const-string v0, "file.separator"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->b:Ljava/lang/String;

    return-void
.end method
