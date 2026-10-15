###### Class i5.q0 (i5.q0)
.class public abstract Li5/q0;
.super Lcom/google/android/gms/internal/firebase_auth/zza;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Li5/r0;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zza;-><init>(Ljava/lang/String;)V

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

    packed-switch p1, :pswitch_data_aa

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzej;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzej;

    .line 2
    invoke-interface {p0, p1}, Li5/r0;->b8(Lcom/google/android/gms/internal/firebase_auth/zzej;)V

    goto/16 :goto_a8

    .line 3
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzeh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzeh;

    .line 4
    invoke-interface {p0, p1}, Li5/r0;->L5(Lcom/google/android/gms/internal/firebase_auth/zzeh;)V

    goto/16 :goto_a8

    .line 5
    :pswitch_1f
    invoke-interface {p0}, Li5/r0;->a()V

    goto/16 :goto_a8

    .line 6
    :pswitch_24
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 7
    sget-object p3, Lg5/d0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lg5/d0;

    .line 8
    invoke-interface {p0, p1, p2}, Li5/r0;->I8(Lcom/google/android/gms/common/api/Status;Lg5/d0;)V

    goto/16 :goto_a8

    .line 9
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Li5/r0;->D(Ljava/lang/String;)V

    goto :goto_a8

    .line 11
    :pswitch_41
    sget-object p1, Lg5/d0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg5/d0;

    .line 12
    invoke-interface {p0, p1}, Li5/r0;->Z4(Lg5/d0;)V

    goto :goto_a8

    .line 13
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-interface {p0, p1}, Li5/r0;->u(Ljava/lang/String;)V

    goto :goto_a8

    .line 15
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Li5/r0;->o(Ljava/lang/String;)V

    goto :goto_a8

    .line 17
    :pswitch_5d
    invoke-interface {p0}, Li5/r0;->zzb()V

    goto :goto_a8

    .line 18
    :pswitch_61
    invoke-interface {p0}, Li5/r0;->J8()V

    goto :goto_a8

    .line 19
    :pswitch_65
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 20
    invoke-interface {p0, p1}, Li5/r0;->v0(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_a8

    .line 21
    :pswitch_71
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzfm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzfm;

    .line 22
    invoke-interface {p0, p1}, Li5/r0;->p8(Lcom/google/android/gms/internal/firebase_auth/zzfm;)V

    goto :goto_a8

    .line 23
    :pswitch_7d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzem;

    .line 24
    invoke-interface {p0, p1}, Li5/r0;->H2(Lcom/google/android/gms/internal/firebase_auth/zzem;)V

    goto :goto_a8

    .line 25
    :pswitch_89
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 26
    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzew;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzew;

    .line 27
    invoke-interface {p0, p1, p2}, Li5/r0;->k2(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V

    goto :goto_a8

    .line 28
    :pswitch_9d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 29
    invoke-interface {p0, p1}, Li5/r0;->S8(Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    :goto_a8
    const/4 p1, 0x1

    return p1

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_89
        :pswitch_7d
        :pswitch_71
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_41
        :pswitch_39
        :pswitch_24
        :pswitch_1f
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method
