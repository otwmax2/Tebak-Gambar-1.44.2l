###### Class com.google.android.gms.measurement.internal.v (com.google.android.gms.measurement.internal.v)
.class final Lcom/google/android/gms/measurement/internal/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Z

.field final synthetic p:Lcom/google/android/gms/measurement/internal/w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/w;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v;->p:Lcom/google/android/gms/measurement/internal/w;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/v;->o:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v;->p:Lcom/google/android/gms/measurement/internal/w;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/w;->a(Lcom/google/android/gms/measurement/internal/w;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/v;->o:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzli;->i(Z)V

    return-void
.end method
