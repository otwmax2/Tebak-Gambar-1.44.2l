###### Class com.google.android.play.core.assetpacks.q3 (com.google.android.play.core.assetpacks.q3)
.class public final Lcom/google/android/play/core/assetpacks/q3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lcom/google/android/play/core/assetpacks/u3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/s;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/d2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv4/c0;Lv4/c0;Lv4/c0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "Landroid/content/Context;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/s;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/d2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/q3;->a:Lv4/c0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/q3;->b:Lv4/c0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/q3;->c:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q3;->a:Lv4/c0;

    check-cast v0, Lcom/google/android/play/core/assetpacks/r3;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/r3;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/q3;->b:Lv4/c0;

    invoke-static {v1}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/q3;->c:Lv4/c0;

    invoke-static {v2}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v2

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/n3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    .line 3
    invoke-interface {v1}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/u3;

    goto :goto_27

    .line 4
    :cond_21
    invoke-interface {v2}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/u3;

    .line 5
    :goto_27
    invoke-static {v0}, Lv4/b0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
