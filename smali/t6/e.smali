###### Class t6.e (t6.e)
.class public final Lt6/e;
.super Ljava/lang/Object;
.source "KotlinDetector.java"


# direct methods
.method public static a()Ljava/lang/String;
    .registers 1

    .line 1
    :try_start_0
    sget-object v0, Lh9/f;->t:Lh9/f;

    invoke-virtual {v0}, Lh9/f;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method
