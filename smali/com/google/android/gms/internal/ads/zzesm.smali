###### Class com.google.android.gms.internal.ads.zzesm (com.google.android.gms.internal.ads.zzesm)
.class public final Lcom/google/android/gms/internal/ads/zzesm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzesh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzesh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesm;->a:Lcom/google/android/gms/internal/ads/zzesh;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzesh;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzesh;->i()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesm;->a:Lcom/google/android/gms/internal/ads/zzesh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesh;->i()Z

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzesm;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
