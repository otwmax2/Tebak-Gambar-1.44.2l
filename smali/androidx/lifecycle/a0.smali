###### Class androidx.lifecycle.a0 (androidx.lifecycle.a0)
.class public final Landroidx/lifecycle/a0;
.super Ljava/lang/Object;
.source "SavedStateHandleSupport.kt"


# static fields
.field public static final a:Ls0/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a$b<",
            "La1/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ls0/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a$b<",
            "Landroidx/lifecycle/m0;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ls0/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a$b<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/lifecycle/a0$b;

    invoke-direct {v0}, Landroidx/lifecycle/a0$b;-><init>()V

    sput-object v0, Landroidx/lifecycle/a0;->a:Ls0/a$b;

    .line 2
    new-instance v0, Landroidx/lifecycle/a0$c;

    invoke-direct {v0}, Landroidx/lifecycle/a0$c;-><init>()V

    sput-object v0, Landroidx/lifecycle/a0;->b:Ls0/a$b;

    .line 3
    new-instance v0, Landroidx/lifecycle/a0$a;

    invoke-direct {v0}, Landroidx/lifecycle/a0$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/a0;->c:Ls0/a$b;

    return-void
.end method

.method private static final a(La1/e;Landroidx/lifecycle/m0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/z;
    .registers 5

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/a0;->d(La1/e;)Landroidx/lifecycle/b0;

    move-result-object p0

    .line 2
    invoke-static {p1}, Landroidx/lifecycle/a0;->e(Landroidx/lifecycle/m0;)Landroidx/lifecycle/c0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/lifecycle/c0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/z;

    if-nez v0, :cond_25

    sget-object v0, Landroidx/lifecycle/z;->f:Landroidx/lifecycle/z$a;

    .line 4
    invoke-virtual {p0, p2}, Landroidx/lifecycle/b0;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0, p3}, Landroidx/lifecycle/z$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/z;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroidx/lifecycle/c0;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-object v0
.end method

.method public static final b(Ls0/a;)Landroidx/lifecycle/z;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/lifecycle/a0;->a:Ls0/a$b;

    invoke-virtual {p0, v0}, Ls0/a;->a(Ls0/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La1/e;

    if-eqz v0, :cond_40

    .line 2
    sget-object v1, Landroidx/lifecycle/a0;->b:Ls0/a$b;

    invoke-virtual {p0, v1}, Ls0/a;->a(Ls0/a$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/m0;

    if-eqz v1, :cond_38

    .line 3
    sget-object v2, Landroidx/lifecycle/a0;->c:Ls0/a$b;

    invoke-virtual {p0, v2}, Ls0/a;->a(Ls0/a$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 4
    sget-object v3, Landroidx/lifecycle/h0$c;->d:Ls0/a$b;

    invoke-virtual {p0, v3}, Ls0/a;->a(Ls0/a$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_30

    .line 5
    invoke-static {v0, v1, p0, v2}, Landroidx/lifecycle/a0;->a(La1/e;Landroidx/lifecycle/m0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/z;

    move-result-object p0

    return-object p0

    .line 6
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(La1/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "La1/e;",
            ":",
            "Landroidx/lifecycle/m0;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/j;->b()Landroidx/lifecycle/j$c;

    move-result-object v0

    const-string v1, "lifecycle.currentState"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Landroidx/lifecycle/j$c;->p:Landroidx/lifecycle/j$c;

    if-eq v0, v1, :cond_1d

    sget-object v1, Landroidx/lifecycle/j$c;->q:Landroidx/lifecycle/j$c;

    if-ne v0, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_4c

    .line 3
    invoke-interface {p0}, La1/e;->getSavedStateRegistry()La1/c;

    move-result-object v0

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, La1/c;->c(Ljava/lang/String;)La1/c$c;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 4
    new-instance v0, Landroidx/lifecycle/b0;

    invoke-interface {p0}, La1/e;->getSavedStateRegistry()La1/c;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/m0;

    invoke-direct {v0, v2, v3}, Landroidx/lifecycle/b0;-><init>(La1/c;Landroidx/lifecycle/m0;)V

    .line 5
    invoke-interface {p0}, La1/e;->getSavedStateRegistry()La1/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, La1/c;->h(Ljava/lang/String;La1/c$c;)V

    .line 6
    invoke-interface {p0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/b0;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/m;)V

    :cond_4b
    return-void

    .line 7
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(La1/e;)Landroidx/lifecycle/b0;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, La1/e;->getSavedStateRegistry()La1/c;

    move-result-object p0

    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {p0, v0}, La1/c;->c(Ljava/lang/String;)La1/c$c;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/b0;

    if-eqz v0, :cond_16

    check-cast p0, Landroidx/lifecycle/b0;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    if-eqz p0, :cond_1a

    return-object p0

    .line 2
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Landroidx/lifecycle/m0;)Landroidx/lifecycle/c0;
    .registers 5

    const-class v0, Landroidx/lifecycle/c0;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ls0/c;

    invoke-direct {v1}, Ls0/c;-><init>()V

    .line 2
    sget-object v2, Landroidx/lifecycle/a0$d;->o:Landroidx/lifecycle/a0$d;

    .line 3
    invoke-static {v0}, Lt9/z;->b(Ljava/lang/Class;)Lz9/b;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ls0/c;->a(Lz9/b;Ls9/l;)V

    .line 4
    invoke-virtual {v1}, Ls0/c;->b()Landroidx/lifecycle/h0$b;

    move-result-object v1

    .line 5
    new-instance v2, Landroidx/lifecycle/h0;

    invoke-direct {v2, p0, v1}, Landroidx/lifecycle/h0;-><init>(Landroidx/lifecycle/m0;Landroidx/lifecycle/h0$b;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v2, p0, v0}, Landroidx/lifecycle/h0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/c0;

    return-object p0
.end method

###### Class androidx.lifecycle.a0.a (androidx.lifecycle.a0$a)
.class public final Landroidx/lifecycle/a0$a;
.super Ljava/lang/Object;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Ls0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/a$b<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.lifecycle.a0.b (androidx.lifecycle.a0$b)
.class public final Landroidx/lifecycle/a0$b;
.super Ljava/lang/Object;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Ls0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/a$b<",
        "La1/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.lifecycle.a0.c (androidx.lifecycle.a0$c)
.class public final Landroidx/lifecycle/a0$c;
.super Ljava/lang/Object;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Ls0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/a$b<",
        "Landroidx/lifecycle/m0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.lifecycle.a0.d (androidx.lifecycle.a0$d)
.class final Landroidx/lifecycle/a0$d;
.super Lt9/n;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/a0;->e(Landroidx/lifecycle/m0;)Landroidx/lifecycle/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ls0/a;",
        "Landroidx/lifecycle/c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Landroidx/lifecycle/a0$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/lifecycle/a0$d;

    invoke-direct {v0}, Landroidx/lifecycle/a0$d;-><init>()V

    sput-object v0, Landroidx/lifecycle/a0$d;->o:Landroidx/lifecycle/a0$d;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ls0/a;)Landroidx/lifecycle/c0;
    .registers 3

    const-string v0, "$this$initializer"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroidx/lifecycle/c0;

    invoke-direct {p1}, Landroidx/lifecycle/c0;-><init>()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ls0/a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0$d;->c(Ls0/a;)Landroidx/lifecycle/c0;

    move-result-object p1

    return-object p1
.end method
