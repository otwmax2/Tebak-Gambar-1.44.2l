###### Class com.google.android.gms.internal.ads.zzcnt (com.google.android.gms.internal.ads.zzcnt)
.class public final Lcom/google/android/gms/internal/ads/zzcnt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfdk;

.field private final b:Lcom/google/android/gms/internal/ads/zzdpi;

.field private final c:Lcom/google/android/gms/internal/ads/zzeyo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzfdk;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnt;->a:Lcom/google/android/gms/internal/ads/zzfdk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnt;->c:Lcom/google/android/gms/internal/ads/zzeyo;

    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .registers 2

    add-int/lit8 p0, p0, -0x1

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const-string p0, "u"

    return-object p0

    :cond_13
    const-string p0, "ac"

    return-object p0

    :cond_16
    const-string p0, "cb"

    return-object p0

    :cond_19
    const-string p0, "cc"

    return-object p0

    :cond_1c
    const-string p0, "bb"

    return-object p0

    :cond_1f
    const-string p0, "h"

    return-object p0
.end method


# virtual methods
.method public final a(JI)V
    .registers 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->S7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "acr"

    const-string v2, "app_open_ad"

    const-string v3, "ad_format"

    const-string v4, "show_time"

    const-string v5, "ad_closed"

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->a:Lcom/google/android/gms/internal/ads/zzfdk;

    .line 4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfdj;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcnt;->c:Lcom/google/android/gms/internal/ads/zzeyo;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    .line 5
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfdj;->g(Lcom/google/android/gms/internal/ads/zzeyf;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 6
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v4, p1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 7
    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcnt;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 9
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    return-void

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->b:Lcom/google/android/gms/internal/ads/zzdpi;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpi;->a()Lcom/google/android/gms/internal/ads/zzdph;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcnt;->c:Lcom/google/android/gms/internal/ads/zzeyo;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    .line 11
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdph;->e(Lcom/google/android/gms/internal/ads/zzeyf;)Lcom/google/android/gms/internal/ads/zzdph;

    const-string v6, "action"

    .line 12
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    .line 13
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    .line 14
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcnt;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdph;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdph;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdph;->g()V

    return-void
.end method
