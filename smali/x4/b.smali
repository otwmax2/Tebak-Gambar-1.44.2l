###### Class x4.b (x4.b)
.class public final Lx4/b;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lx4/a;",
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


# direct methods
.method public constructor <init>(Lv4/c0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx4/b;->a:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lx4/b;->a:Lv4/c0;

    invoke-interface {v0}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    new-instance v1, Lx4/a;

    invoke-direct {v1, v0}, Lx4/a;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
