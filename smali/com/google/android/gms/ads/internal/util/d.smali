###### Class com.google.android.gms.ads.internal.util.d (com.google.android.gms.ads.internal.util.d)
.class final Lcom/google/android/gms/ads/internal/util/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Landroid/content/Context;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Z

.field final synthetic r:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzaw;Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 6

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/d;->o:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/d;->p:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/util/d;->q:Z

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/util/d;->r:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/d;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->g(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/d;->p:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/d;->q:Z

    if-eqz v1, :cond_18

    const-string v1, "Error"

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1d

    :cond_18
    const-string v1, "Info"

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5
    :goto_1d
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/d;->r:Z

    const/4 v2, 0x0

    const-string v3, "Dismiss"

    if-eqz v1, :cond_28

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_35

    .line 7
    :cond_28
    new-instance v1, Lcom/google/android/gms/ads/internal/util/c;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/util/c;-><init>(Lcom/google/android/gms/ads/internal/util/d;)V

    const-string v4, "Learn More"

    .line 8
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10
    :goto_35
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
