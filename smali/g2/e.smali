###### Class g2.e (g2.e)
.class public interface abstract Lg2/e;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lg2/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lg2/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lg2/e$a;

    invoke-direct {v0}, Lg2/e$a;-><init>()V

    sput-object v0, Lg2/e;->a:Lg2/e;

    .line 2
    new-instance v0, Lg2/j$a;

    invoke-direct {v0}, Lg2/j$a;-><init>()V

    invoke-virtual {v0}, Lg2/j$a;->a()Lg2/j;

    move-result-object v0

    sput-object v0, Lg2/e;->b:Lg2/e;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

###### Class g2.e.a (g2.e$a)
.class final Lg2/e$a;
.super Ljava/lang/Object;
.source "Headers.java"

# interfaces
.implements Lg2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
