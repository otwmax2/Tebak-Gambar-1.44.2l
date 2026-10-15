###### Class com.google.android.gms.measurement.internal.n1 (com.google.android.gms.measurement.internal.n1)
.class final Lcom/google/android/gms/measurement/internal/n1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/c4;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/n1;->a:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "auto"

    const-string v1, "_err"

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/n1;->a:Lcom/google/android/gms/measurement/internal/zzin;

    .line 2
    invoke-virtual {p2, v0, v1, p3, p1}, Lcom/google/android/gms/measurement/internal/zzin;->p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/n1;->a:Lcom/google/android/gms/measurement/internal/zzin;

    .line 3
    invoke-virtual {p1, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzin;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
