###### Class com.google.android.gms.internal.ads.zzfeb (com.google.android.gms.internal.ads.zzfeb)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfep;->a()Z

    move-result v0

    if-eqz v0, :cond_4f

    add-int/lit8 v0, p1, -0x2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3b

    packed-switch v0, :pswitch_data_56

    goto :goto_4f

    .line 2
    :pswitch_14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->b:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_47

    .line 3
    :pswitch_21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->d:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_47

    .line 4
    :pswitch_2e
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_47

    .line 5
    :cond_3b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->e:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_47
    if-eqz v0, :cond_4f

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfee;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfee;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 7
    :cond_4f
    :goto_4f
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfey;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfey;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_2e
        :pswitch_21
        :pswitch_14
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/ads/zzfec;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfeb;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfec;

    move-result-object p0

    .line 2
    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzfee;

    if-nez p1, :cond_9

    return-object p0

    .line 3
    :cond_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzfec;->f()Lcom/google/android/gms/internal/ads/zzfec;

    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzfec;->l0(I)Lcom/google/android/gms/internal/ads/zzfec;

    .line 4
    iget-object p1, p3, Lcom/google/android/gms/ads/internal/client/zzl;->D:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfem;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 5
    iget-object p1, p3, Lcom/google/android/gms/ads/internal/client/zzl;->D:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzfec;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfec;

    :cond_1c
    return-object p0
.end method
