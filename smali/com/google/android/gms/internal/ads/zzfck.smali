###### Class com.google.android.gms.internal.ads.zzfck (com.google.android.gms.internal.ads.zzfck)
.class public final Lcom/google/android/gms/internal/ads/zzfck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static final a(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfcr;
    .registers 4

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfcs;->e(Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfuu;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfck;->b(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzfuu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzfuu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfcr;
    .registers 13

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfcr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcs;->d()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfcr;-><init>(Lcom/google/android/gms/internal/ads/zzfcs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfut;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfcq;)V

    return-object v8
.end method

.method public static final c(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfcr;
    .registers 12

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfcr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcs;->d()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p2

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfcr;-><init>(Lcom/google/android/gms/internal/ads/zzfcs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfut;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfcq;)V

    return-object v8
.end method

.method public static final d(Lcom/google/android/gms/internal/ads/zzfce;Lcom/google/android/gms/internal/ads/zzfuu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfcr;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfcj;-><init>(Lcom/google/android/gms/internal/ads/zzfce;)V

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfck;->b(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzfuu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfcs;)Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.android.gms.internal.ads.zzfcj (com.google.android.gms.internal.ads.zzfcj)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfcj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfce;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfce;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcj;->a:Lcom/google/android/gms/internal/ads/zzfce;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcj;->a:Lcom/google/android/gms/internal/ads/zzfce;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfce;->zza()V

    const/4 v0, 0x0

    return-object v0
.end method
