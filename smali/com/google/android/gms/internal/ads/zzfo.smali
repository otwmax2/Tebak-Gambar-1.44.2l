###### Class com.google.android.gms.internal.ads.zzfo (com.google.android.gms.internal.ads.zzfo)
.class public final Lcom/google/android/gms/internal/ads/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzff;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgc;

.field private b:Lcom/google/android/gms/internal/ads/zzgi;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->a:Lcom/google/android/gms/internal/ads/zzgc;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->e:I

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/gms/internal/ads/zzfo;
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->f:Z

    return-object p0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/zzfo;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->d:I

    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/internal/ads/zzfo;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->e:I

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzgi;)Lcom/google/android/gms/internal/ads/zzfo;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->b:Lcom/google/android/gms/internal/ads/zzgi;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfo;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzft;
    .registers 11

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzft;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfo;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfo;->d:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfo;->e:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzfo;->f:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfo;->a:Lcom/google/android/gms/internal/ads/zzgc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzft;-><init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/zzgc;Lcom/google/android/gms/internal/ads/zzfnv;ZLcom/google/android/gms/internal/ads/zzfs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfo;->b:Lcom/google/android/gms/internal/ads/zzgi;

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzfa;->f(Lcom/google/android/gms/internal/ads/zzgi;)V

    :cond_1a
    return-object v9
.end method

.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzfg;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfo;->f()Lcom/google/android/gms/internal/ads/zzft;

    move-result-object v0

    return-object v0
.end method
