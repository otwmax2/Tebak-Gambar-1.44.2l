###### Class com.google.android.gms.internal.ads.zzbck (com.google.android.gms.internal.ads.zzbck)
.class public final Lcom/google/android/gms/internal/ads/zzbck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final b:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final c:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final d:Lcom/google/android/gms/internal/ads/zzbbw;

.field public static final e:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "gads:js_flags:mf"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbck;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:js_flags:update_interval"

    const-wide/32 v1, 0x2932e00

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbw;->b(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbck;->b:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:persist_js_flag:ars"

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbck;->c:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:persist_js_flag:as"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbck;->d:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v0, "gads:persist_js_flag:scar"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbck;->e:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method
