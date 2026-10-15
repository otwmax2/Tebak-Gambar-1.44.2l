###### Class v4.l0 (v4.l0)
.class public abstract Lv4/l0;
.super Lv4/e0;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/m0;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService"

    .line 1
    invoke-direct {p0, v0}, Lv4/e0;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final P0(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x2

    const/4 p4, 0x0

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    if-eq p1, p3, :cond_2f

    const/4 p3, 0x3

    if-eq p1, p3, :cond_b

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_b
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1a

    goto :goto_2b

    .line 4
    :cond_1a
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 5
    instance-of p4, p3, Lv4/n0;

    if-eqz p4, :cond_26

    .line 6
    move-object p4, p3

    check-cast p4, Lv4/n0;

    goto :goto_2b

    :cond_26
    new-instance p4, Lv4/n0;

    .line 7
    invoke-direct {p4, p2}, Lv4/n0;-><init>(Landroid/os/IBinder;)V

    .line 8
    :goto_2b
    invoke-interface {p0, p1, p4}, Lv4/m0;->x1(Landroid/os/Bundle;Lv4/n0;)V

    goto :goto_52

    .line 9
    :cond_2f
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3e

    goto :goto_4f

    .line 11
    :cond_3e
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 12
    instance-of p4, p3, Lv4/n0;

    if-eqz p4, :cond_4a

    .line 13
    move-object p4, p3

    check-cast p4, Lv4/n0;

    goto :goto_4f

    :cond_4a
    new-instance p4, Lv4/n0;

    .line 14
    invoke-direct {p4, p2}, Lv4/n0;-><init>(Landroid/os/IBinder;)V

    .line 15
    :goto_4f
    invoke-interface {p0, p1, p4}, Lv4/m0;->E2(Landroid/os/Bundle;Lv4/n0;)V

    :goto_52
    const/4 p1, 0x1

    return p1
.end method
