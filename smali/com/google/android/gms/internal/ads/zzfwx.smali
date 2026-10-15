###### Class com.google.android.gms.internal.ads.zzfwx (com.google.android.gms.internal.ads.zzfwx)
.class public final Lcom/google/android/gms/internal/ads/zzfwx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:[B

.field private final d:Lcom/google/android/gms/internal/ads/zzgme;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/zzfvx;

.field private final h:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[BILcom/google/android/gms/internal/ads/zzgme;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfvx;)V
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwx;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwx;->b:Ljava/lang/Object;

    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwx;->c:[B

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfwx;->h:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfwx;->d:Lcom/google/android/gms/internal/ads/zzgme;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzfwx;->e:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfwx;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfwx;->g:Lcom/google/android/gms/internal/ads/zzfvx;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwx;->e:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzfvx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwx;->g:Lcom/google/android/gms/internal/ads/zzfvx;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzgme;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwx;->d:Lcom/google/android/gms/internal/ads/zzgme;

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwx;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwx;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwx;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()[B
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwx;->c:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    array-length v1, v0

    .line 1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwx;->h:I

    return v0
.end method
