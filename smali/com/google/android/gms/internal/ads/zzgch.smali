###### Class com.google.android.gms.internal.ads.zzgch (com.google.android.gms.internal.ads.zzgch)
.class public final Lcom/google/android/gms/internal/ads/zzgch;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfvo;

.field private final b:Lcom/google/android/gms/internal/ads/zzfvu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfvo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgch;->a:Lcom/google/android/gms/internal/ads/zzfvo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgch;->b:Lcom/google/android/gms/internal/ads/zzfvu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfvu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->a:Lcom/google/android/gms/internal/ads/zzfvo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgch;->b:Lcom/google/android/gms/internal/ads/zzfvu;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->a:Lcom/google/android/gms/internal/ads/zzfvo;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfvo;->b([B[B)[B

    move-result-object p1

    return-object p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgch;->b:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfvu;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method
