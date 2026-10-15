###### Class com.google.android.gms.common.internal.a (com.google.android.gms.common.internal.a)
.class final Lcom/google/android/gms/common/internal/a;
.super Lcom/google/android/gms/common/internal/zag;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field final synthetic o:Landroid/content/Intent;

.field final synthetic p:Landroid/app/Activity;

.field final synthetic q:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->o:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/a;->p:Landroid/app/Activity;

    iput p3, p0, Lcom/google/android/gms/common/internal/a;->q:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zag;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->o:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->p:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/common/internal/a;->q:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    return-void
.end method
