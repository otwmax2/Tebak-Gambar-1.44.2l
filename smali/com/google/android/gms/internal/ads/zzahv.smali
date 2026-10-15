###### Class com.google.android.gms.internal.ads.zzahv (com.google.android.gms.internal.ads.zzahv)
.class final Lcom/google/android/gms/internal/ads/zzahv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzabb;

.field private final b:Landroid/util/SparseArray;

.field private final c:Landroid/util/SparseArray;

.field private final d:Lcom/google/android/gms/internal/ads/zzaat;

.field private final e:[B

.field private f:I

.field private g:J

.field private h:J

.field private final i:Lcom/google/android/gms/internal/ads/zzahu;

.field private final j:Lcom/google/android/gms/internal/ads/zzahu;

.field private k:Z

.field private l:J

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabb;ZZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahv;->a:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahv;->b:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    .line 2
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahv;->c:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzahu;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzahu;-><init>(Lcom/google/android/gms/internal/ads/zzaht;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahv;->i:Lcom/google/android/gms/internal/ads/zzahu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzahu;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzahu;-><init>(Lcom/google/android/gms/internal/ads/zzaht;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahv;->j:Lcom/google/android/gms/internal/ads/zzahu;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahv;->e:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaat;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p1, p3, p3}, Lcom/google/android/gms/internal/ads/zzaat;-><init>([BII)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahv;->d:Lcom/google/android/gms/internal/ads/zzaat;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzahv;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaap;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahv;->c:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaap;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzaaq;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahv;->b:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaaq;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahv;->k:Z

    return-void
.end method

.method public final d(JIJ)V
    .registers 6

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzahv;->f:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzahv;->h:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahv;->g:J

    return-void
.end method

.method public final e(JIZZ)Z
    .registers 20

    move-object v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahv;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_a

    goto :goto_3a

    :cond_a
    if-eqz p4, :cond_2e

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahv;->k:Z

    if-eqz v1, :cond_2e

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahv;->g:J

    sub-long v6, p1, v4

    long-to-int v1, v6

    add-int v11, p3, v1

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzahv;->m:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-eqz v1, :cond_2e

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahv;->n:Z

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzahv;->l:J

    sub-long/2addr v4, v12

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahv;->a:Lcom/google/android/gms/internal/ads/zzabb;

    long-to-int v10, v4

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    :cond_2e
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahv;->g:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahv;->l:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahv;->h:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahv;->m:J

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzahv;->n:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzahv;->k:Z

    :goto_3a
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahv;->n:Z

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahv;->f:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_45

    if-eqz p5, :cond_46

    if-ne v4, v3, :cond_46

    :cond_45
    const/4 v2, 0x1

    :cond_46
    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahv;->n:Z

    return v1
.end method
