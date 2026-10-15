###### Class com.google.android.gms.internal.ads.zzfxv (com.google.android.gms.internal.ads.zzfxv)
.class public final Lcom/google/android/gms/internal/ads/zzfxv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzfyf;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/zzgok;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->b:Lcom/google/android/gms/internal/ads/zzgok;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->c:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfxu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->b:Lcom/google/android/gms/internal/ads/zzgok;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzfxv;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzgok;)Lcom/google/android/gms/internal/ads/zzfxv;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->b:Lcom/google/android/gms/internal/ads/zzgok;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzfyf;)Lcom/google/android/gms/internal/ads/zzfxv;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzfxx;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    if-eqz v0, :cond_c5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->b:Lcom/google/android/gms/internal/ads/zzgok;

    if-eqz v1, :cond_c5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgok;->a()I

    move-result v1

    if-ne v2, v1, :cond_bd

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->c()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    goto :goto_25

    .line 3
    :cond_1d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->c()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->c:Ljava/lang/Integer;

    if-nez v0, :cond_32

    goto :goto_3a

    .line 6
    :cond_32
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->b()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyd;->d:Lcom/google/android/gms/internal/ads/zzfyd;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4d

    new-array v0, v2, [B

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgoj;->b([B)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object v0

    :goto_4b
    move-object v4, v0

    goto :goto_99

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->b()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyd;->c:Lcom/google/android/gms/internal/ads/zzfyd;

    const/4 v3, 0x5

    if-ne v0, v1, :cond_73

    .line 11
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgoj;->b([B)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object v0

    goto :goto_4b

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->b()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyd;->b:Lcom/google/android/gms/internal/ads/zzfyd;

    if-ne v0, v1, :cond_a7

    .line 13
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgoj;->b([B)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object v0

    goto :goto_4b

    .line 14
    :goto_99
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfxv;->b:Lcom/google/android/gms/internal/ads/zzgok;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfxv;->c:Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfxx;-><init>(Lcom/google/android/gms/internal/ads/zzfyf;Lcom/google/android/gms/internal/ads/zzgok;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzfxw;)V

    return-object v0

    .line 15
    :cond_a7
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfxv;->a:Lcom/google/android/gms/internal/ads/zzfyf;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfyf;->b()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown AesEaxParameters.Variant: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_bd
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_c5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters and/or key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_ce

    :goto_cd
    throw v0

    :goto_ce
    goto :goto_cd
.end method
