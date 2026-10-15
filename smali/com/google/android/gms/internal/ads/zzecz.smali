###### Class com.google.android.gms.internal.ads.zzecz (com.google.android.gms.internal.ads.zzecz)
.class final Lcom/google/android/gms/internal/ads/zzecz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdee;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final b:Lcom/google/android/gms/internal/ads/zzbpc;

.field private final c:Lcom/google/android/gms/ads/AdFormat;

.field private d:Lcom/google/android/gms/internal/ads/zzcvg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzbpc;Lcom/google/android/gms/ads/AdFormat;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecz;->d:Lcom/google/android/gms/internal/ads/zzcvg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecz;->b:Lcom/google/android/gms/internal/ads/zzbpc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzecz;->c:Lcom/google/android/gms/ads/AdFormat;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzded;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->o:Lcom/google/android/gms/ads/AdFormat;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->c:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eq p1, p3, :cond_27

    if-eq p1, v0, :cond_1c

    const/4 p3, 0x6

    if-ne p1, p3, :cond_56

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->b:Lcom/google/android/gms/internal/ads/zzbpc;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpc;->c0(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_31

    .line 4
    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->b:Lcom/google/android/gms/internal/ads/zzbpc;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpc;->D9(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_31

    .line 6
    :cond_27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->b:Lcom/google/android/gms/internal/ads/zzbpc;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbpc;->D6(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_5e

    :goto_31
    if-eqz p1, :cond_56

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->d:Lcom/google/android/gms/internal/ads/zzcvg;

    if-nez p1, :cond_38

    return-void

    .line 9
    :cond_38
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->p1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->Z:I

    if-ne p1, v0, :cond_55

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->d:Lcom/google/android/gms/internal/ads/zzcvg;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvg;->zza()V

    :cond_55
    return-void

    .line 13
    :cond_56
    new-instance p1, Lcom/google/android/gms/internal/ads/zzded;

    const-string p2, "Adapter failed to show."

    .line 14
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzded;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_5e
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/android/gms/internal/ads/zzded;

    .line 16
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzded;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzcvg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecz;->d:Lcom/google/android/gms/internal/ads/zzcvg;

    return-void
.end method
