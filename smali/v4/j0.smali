###### Class v4.j0 (v4.j0)
.class public abstract Lv4/j0;
.super Lv4/e0;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/k0;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback"

    .line 1
    invoke-direct {p0, v0}, Lv4/e0;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final P0(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_dc

    :pswitch_3
    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-interface {p0, p1}, Lv4/k0;->v6(Landroid/os/Bundle;)V

    goto/16 :goto_d9

    :pswitch_12
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 5
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 6
    invoke-interface {p0, p3, p1}, Lv4/k0;->H4(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_d9

    :pswitch_25
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 8
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 9
    invoke-interface {p0, p3, p1}, Lv4/k0;->W5(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_d9

    :pswitch_38
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 11
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 12
    invoke-interface {p0, p3, p1}, Lv4/k0;->G1(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_d9

    :pswitch_4b
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 14
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 15
    invoke-interface {p0, p3, p1}, Lv4/k0;->o9(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto/16 :goto_d9

    :pswitch_5e
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 17
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 18
    invoke-interface {p0, p3, p1}, Lv4/k0;->Y7(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_d9

    :pswitch_70
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 20
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 21
    invoke-interface {p0, p3, p1}, Lv4/k0;->l7(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_d9

    :pswitch_82
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 23
    invoke-interface {p0, p1}, Lv4/k0;->X(Landroid/os/Bundle;)V

    goto :goto_d9

    .line 24
    :pswitch_8e
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 25
    invoke-static {p2, p1}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 26
    invoke-interface {p0, p3, p1}, Lv4/k0;->Qa(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_d9

    .line 27
    :pswitch_a0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 29
    invoke-interface {p0, p1}, Lv4/k0;->g2(Ljava/util/List;)V

    goto :goto_d9

    .line 30
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-static {p2, p3}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 32
    invoke-interface {p0, p1, p2}, Lv4/k0;->ma(ILandroid/os/Bundle;)V

    goto :goto_d9

    .line 33
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    invoke-static {p2, p3}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 35
    invoke-interface {p0, p1, p2}, Lv4/k0;->p0(ILandroid/os/Bundle;)V

    goto :goto_d9

    .line 36
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    invoke-static {p2, p3}, Lv4/f0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 38
    invoke-interface {p0, p1, p2}, Lv4/k0;->F9(ILandroid/os/Bundle;)V

    :goto_d9
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_dc
    .packed-switch 0x2
        :pswitch_ca
        :pswitch_ba
        :pswitch_aa
        :pswitch_a0
        :pswitch_8e
        :pswitch_82
        :pswitch_70
        :pswitch_3
        :pswitch_5e
        :pswitch_4b
        :pswitch_38
        :pswitch_25
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method
