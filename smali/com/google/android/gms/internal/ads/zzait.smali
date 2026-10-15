###### Class com.google.android.gms.internal.ads.zzait (com.google.android.gms.internal.ads.zzait)
.class final Lcom/google/android/gms/internal/ads/zzait;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaim;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzem;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzaiv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaiv;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->b:Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzem;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->a:Lcom/google/android/gms/internal/ads/zzem;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 4

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x6

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_6e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzait;->a:Lcom/google/android/gms/internal/ads/zzem;

    .line 4
    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzen;->a(Lcom/google/android/gms/internal/ads/zzem;I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzait;->a:Lcom/google/android/gms/internal/ads/zzem;

    const/16 v5, 0x10

    .line 5
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzait;->a:Lcom/google/android/gms/internal/ads/zzem;

    const/4 v6, 0x3

    .line 6
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_3b

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzait;->a:Lcom/google/android/gms/internal/ads/zzem;

    .line 7
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    goto :goto_6b

    :cond_3b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzait;->a:Lcom/google/android/gms/internal/ads/zzem;

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzait;->b:Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaiv;->c(Lcom/google/android/gms/internal/ads/zzaiv;)Landroid/util/SparseArray;

    move-result-object v5

    .line 9
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6b

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzait;->b:Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaiv;->c(Lcom/google/android/gms/internal/ads/zzaiv;)Landroid/util/SparseArray;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzain;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 10
    invoke-direct {v8, v5, v4}, Lcom/google/android/gms/internal/ads/zzaiu;-><init>(Lcom/google/android/gms/internal/ads/zzaiv;I)V

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzain;-><init>(Lcom/google/android/gms/internal/ads/zzaim;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzait;->b:Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaiv;->b(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 11
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzaiv;->m(Lcom/google/android/gms/internal/ads/zzaiv;I)V

    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_6e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->b:Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaiv;->c(Lcom/google/android/gms/internal/ads/zzaiv;)Landroid/util/SparseArray;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
