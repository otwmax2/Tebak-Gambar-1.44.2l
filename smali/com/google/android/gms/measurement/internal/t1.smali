###### Class com.google.android.gms.measurement.internal.t1 (com.google.android.gms.measurement.internal.t1)
.class final Lcom/google/android/gms/measurement/internal/t1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzah;

.field final synthetic p:J

.field final synthetic q:I

.field final synthetic r:J

.field final synthetic s:Z

.field final synthetic t:Lcom/google/android/gms/measurement/internal/zzah;

.field final synthetic u:Lcom/google/android/gms/measurement/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzah;JIJZLcom/google/android/gms/measurement/internal/zzah;)V
    .registers 10

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t1;->u:Lcom/google/android/gms/measurement/internal/zzin;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t1;->o:Lcom/google/android/gms/measurement/internal/zzah;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/t1;->p:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/t1;->q:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/t1;->r:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/t1;->s:Z

    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/t1;->t:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t1;->u:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t1;->o:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzin;->J(Lcom/google/android/gms/measurement/internal/zzah;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t1;->u:Lcom/google/android/gms/measurement/internal/zzin;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/t1;->p:J

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzin;->w(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/t1;->u:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/t1;->o:Lcom/google/android/gms/measurement/internal/zzah;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/t1;->q:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/t1;->r:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/t1;->s:Z

    const/4 v9, 0x1

    .line 3
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzin;->e0(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzah;IJZZ)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpp;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t1;->u:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzel;->K0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t1;->u:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t1;->o:Lcom/google/android/gms/measurement/internal/zzah;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/t1;->t:Lcom/google/android/gms/measurement/internal/zzah;

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzin;->d0(Lcom/google/android/gms/measurement/internal/zzin;Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzah;)V

    :cond_3a
    return-void
.end method
