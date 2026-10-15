###### Class com.google.android.play.core.assetpacks.p0 (com.google.android.play.core.assetpacks.p0)
.class public final Lcom/google/android/play/core/assetpacks/p0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lcom/google/android/play/core/assetpacks/o0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv4/c0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/p0;->a:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p0;->a:Lv4/c0;

    invoke-static {v0}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/o0;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/o0;-><init>(Lv4/y;)V

    return-object v1
.end method
