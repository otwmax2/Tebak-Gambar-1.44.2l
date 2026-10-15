###### Class t3.f (t3.f)
.class public abstract Lt3/f;
.super Ljava/lang/Object;
.source "EventStoreModule.java"


# direct methods
.method static a()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljavax/inject/Named;
    .end annotation

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljavax/inject/Named;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c()I
    .registers 1
    .annotation runtime Ljavax/inject/Named;
    .end annotation

    .line 1
    sget v0, Lt3/t0;->r:I

    return v0
.end method

.method static d()Lt3/e;
    .registers 1

    .line 1
    sget-object v0, Lt3/e;->a:Lt3/e;

    return-object v0
.end method
