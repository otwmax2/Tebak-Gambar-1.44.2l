###### Class z6.h (z6.h)
.class public interface abstract Lz6/h;
.super Ljava/lang/Object;
.source "SettingsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/h$a;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/Boolean;
.end method

.method public abstract b(Lk9/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract c()Lca/a;
.end method

.method public abstract d()Ljava/lang/Double;
.end method

###### Class z6.h.a (z6.h$a)
.class public final Lz6/h$a;
.super Ljava/lang/Object;
.source "SettingsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lz6/h;Lk9/d;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/h;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p0, Lh9/t;->a:Lh9/t;

    return-object p0
.end method
