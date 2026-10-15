###### Class com.google.android.gms.internal.ads.zzgcn (com.google.android.gms.internal.ads.zzgcn)
.class public abstract Lcom/google/android/gms/internal/ads/zzgcn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgoj;

.field private final b:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcm;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcn;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgcn;->b:Ljava/lang/Class;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzgcl;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgcn;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgck;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzgck;-><init>(Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcl;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/ads/zzgeb;Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfvx;
    .param p2    # Lcom/google/android/gms/internal/ads/zzfxg;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzgoj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcn;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    return-object v0
.end method

.method public final d()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcn;->b:Ljava/lang/Class;

    return-object v0
.end method
