###### Class com.google.android.gms.measurement.internal.p (com.google.android.gms.measurement.internal.p)
.class final Lcom/google/android/gms/measurement/internal/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:I

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Ljava/lang/Object;

.field final synthetic r:Ljava/lang/Object;

.field final synthetic s:Ljava/lang/Object;

.field final synthetic t:Lcom/google/android/gms/measurement/internal/zzey;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzey;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p;->t:Lcom/google/android/gms/measurement/internal/zzey;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/p;->o:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/p;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/p;->q:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/p;->r:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/p;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p;->t:Lcom/google/android/gms/measurement/internal/zzey;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z0;->i()Z

    move-result v1

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p;->t:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzey;->j(Lcom/google/android/gms/measurement/internal/zzey;)C

    move-result v2

    if-nez v2, :cond_3b

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->F()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p;->t:Lcom/google/android/gms/measurement/internal/zzey;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    const/16 v2, 0x43

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->C(Lcom/google/android/gms/measurement/internal/zzey;C)V

    goto :goto_3b

    .line 7
    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p;->t:Lcom/google/android/gms/measurement/internal/zzey;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    const/16 v2, 0x63

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->C(Lcom/google/android/gms/measurement/internal/zzey;C)V

    .line 10
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p;->t:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzey;->k(Lcom/google/android/gms/measurement/internal/zzey;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_56

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->l()J

    const-wide/32 v2, 0xee48

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->A(Lcom/google/android/gms/measurement/internal/zzey;J)V

    :cond_56
    iget v1, p0, Lcom/google/android/gms/measurement/internal/p;->o:I

    const-string v2, "01VDIWEA?"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/p;->t:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->j(Lcom/google/android/gms/measurement/internal/zzey;)C

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->k(Lcom/google/android/gms/measurement/internal/zzey;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/p;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/p;->q:Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/p;->r:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/p;->s:Ljava/lang/Object;

    const/4 v9, 0x1

    .line 14
    invoke-static {v9, v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzey;->w(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_a3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p;->p:Ljava/lang/String;

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_a3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x;->d:Lcom/google/android/gms/measurement/internal/zzfl;

    if-eqz v0, :cond_ac

    const-wide/16 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfl;->b(Ljava/lang/String;J)V

    :cond_ac
    return-void

    :cond_ad
    const/4 v0, 0x6

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/p;->t:Lcom/google/android/gms/measurement/internal/zzey;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
