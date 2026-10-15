###### Class com.google.android.gms.measurement.internal.w0 (com.google.android.gms.measurement.internal.w0)
.class final Lcom/google/android/gms/measurement/internal/w0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Ljava/lang/String;

.field final synthetic r:J

.field final synthetic s:Lcom/google/android/gms/measurement/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzha;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w0;->s:Lcom/google/android/gms/measurement/internal/zzha;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/w0;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/w0;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/w0;->q:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/w0;->r:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpm;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w0;->s:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzel;->v0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w0;->o:Ljava/lang/String;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w0;->s:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w0;->p:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzli;->q(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziu;)V

    return-void

    :cond_26
    new-instance v1, Lcom/google/android/gms/measurement/internal/zziu;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w0;->q:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/w0;->r:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zziu;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w0;->s:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w0;->p:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzli;->q(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziu;)V

    return-void

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w0;->o:Ljava/lang/String;

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w0;->s:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->a0()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->I()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w0;->p:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjb;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziu;)V

    return-void

    :cond_53
    new-instance v1, Lcom/google/android/gms/measurement/internal/zziu;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w0;->q:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/w0;->r:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zziu;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w0;->s:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->a0()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->I()Lcom/google/android/gms/measurement/internal/zzjb;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w0;->p:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzjb;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziu;)V

    return-void
.end method
