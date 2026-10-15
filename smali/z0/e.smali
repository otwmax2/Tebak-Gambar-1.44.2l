###### Class z0.e (z0.e)
.class public Lz0/e;
.super Ljava/lang/Object;
.source "SneakyThrow.java"


# direct methods
.method public static a(Ljava/lang/Exception;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lz0/e;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Ljava/lang/Throwable;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    throw p0
.end method
