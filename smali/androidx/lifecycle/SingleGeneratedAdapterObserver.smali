###### Class androidx.lifecycle.SingleGeneratedAdapterObserver (androidx.lifecycle.SingleGeneratedAdapterObserver)
.class Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field private final a:Landroidx/lifecycle/g;


# direct methods
.method constructor <init>(Landroidx/lifecycle/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Landroidx/lifecycle/g;

    return-void
.end method


# virtual methods
.method public c(Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Landroidx/lifecycle/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;ZLandroidx/lifecycle/s;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Landroidx/lifecycle/g;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;ZLandroidx/lifecycle/s;)V

    return-void
.end method
