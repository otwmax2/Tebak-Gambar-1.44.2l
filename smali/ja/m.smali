###### Class ja.m (ja.m)
.class public interface abstract Lja/m;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Lja/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lja/m$a;

    invoke-direct {v0}, Lja/m$a;-><init>()V

    sput-object v0, Lja/m;->a:Lja/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lja/t;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/t;",
            ")",
            "Ljava/util/List<",
            "Lja/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lja/t;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/t;",
            "Ljava/util/List<",
            "Lja/l;",
            ">;)V"
        }
    .end annotation
.end method

###### Class ja.m.a (ja.m$a)
.class Lja/m$a;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Lja/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lja/t;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/t;",
            ")",
            "Ljava/util/List<",
            "Lja/l;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Lja/t;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/t;",
            "Ljava/util/List<",
            "Lja/l;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
