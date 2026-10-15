###### Class v4.h0 (v4.h0)
.class public abstract Lv4/h0;
.super Lv4/e0;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/i0;


# direct methods
.method public static X0(Landroid/os/IBinder;)Lv4/i0;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lv4/i0;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lv4/i0;

    return-object v0

    :cond_11
    new-instance v0, Lv4/g0;

    .line 4
    invoke-direct {v0, p0}, Lv4/g0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
