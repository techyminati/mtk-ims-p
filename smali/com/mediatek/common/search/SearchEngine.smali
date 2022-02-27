.class public final Lcom/mediatek/common/search/SearchEngine;
.super Ljava/lang/Object;
.source "SearchEngine.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/common/search/SearchEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final DEFAULT_SP:Ljava/lang/String; = "--"

.field private static final EMPTY:Ljava/lang/String; = "nil"

.field public static final FAVICON:I = 0x2

.field private static final FIELD_ENCODING:I = 0x4

.field private static final FIELD_FAVICON:I = 0x2

.field private static final FIELD_KEYWORD:I = 0x1

.field private static final FIELD_LABEL:I = 0x0

.field private static final FIELD_SEARCH_URI:I = 0x3

.field private static final FIELD_SUGGEST_URI:I = 0x5

.field public static final NAME:I = -0x1

.field private static final NUM_FIELDS:I = 0x6

.field private static final PARAMETER_INPUT_ENCODING:Ljava/lang/String; = "{inputEncoding}"

.field private static final PARAMETER_LANGUAGE:Ljava/lang/String; = "{language}"

.field private static final PARAMETER_SEARCH_TERMS:Ljava/lang/String; = "{searchTerms}"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSearchEngineData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "SearchEngine"

    sput-object v0, Lcom/mediatek/common/search/SearchEngine;->TAG:Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/mediatek/common/search/SearchEngine$1;

    invoke-direct {v0}, Lcom/mediatek/common/search/SearchEngine$1;-><init>()V

    sput-object v0, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mName:Ljava/lang/String;

    .line 227
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/mediatek/common/search/SearchEngine;->mName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method private getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "templateUri"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    return-object v1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    .line 193
    .local v0, "enc":Ljava/lang/String;
    :try_start_0
    const-string v2, "{searchTerms}"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/mediatek/common/search/SearchEngine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured when encoding query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object v1
.end method

.method private getSearchUri()Ljava/lang/String;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getSuggestUri()Ljava/lang/String;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static parseField([Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [Ljava/lang/String;
    .param p1, "fieldIndex"    # I

    .line 318
    add-int/lit8 v0, p1, 0x1

    .line 320
    .local v0, "realFieldIndex":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_1

    aget-object v1, p0, v0

    .line 321
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "nil"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    aget-object v1, p0, v0

    return-object v1

    .line 322
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 17
    .param p0, "configInfo"    # Ljava/lang/String;
    .param p1, "sp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 247
    move-object/from16 v1, p1

    sget-object v2, Lcom/mediatek/common/search/SearchEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse From config file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz v0, :cond_8

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 254
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    :cond_0
    const-string v1, "--"

    .line 258
    .end local p1    # "sp":Ljava/lang/String;
    .local v1, "sp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "configData":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 264
    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "engineName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "engineLabel":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "engineKeyword":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-static {v2, v8}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "engineFavicon":Ljava/lang/String;
    const/4 v10, 0x3

    invoke-static {v2, v10}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 269
    .local v11, "engineSearchUri":Ljava/lang/String;
    const/4 v12, 0x4

    invoke-static {v2, v12}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 270
    .local v13, "engineEncoding":Ljava/lang/String;
    const/4 v14, 0x5

    invoke-static {v2, v14}, Lcom/mediatek/common/search/SearchEngine;->parseField([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 273
    .local v15, "engineSuggestUri":Ljava/lang/String;
    sget-object v14, Lcom/mediatek/common/search/SearchEngine;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SearchEngine consturctor called, search engine name is: "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    if-eqz v11, :cond_6

    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 283
    .local v10, "locale":Ljava/util/Locale;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .local v12, "language":Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 285
    const/16 v14, 0x2d

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 290
    .local v14, "language_str":Ljava/lang/String;
    const-string v8, "{language}"

    invoke-virtual {v11, v8, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 291
    .end local v11    # "engineSearchUri":Ljava/lang/String;
    .local v8, "engineSearchUri":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 292
    const-string v11, "{language}"

    invoke-virtual {v15, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 296
    :cond_3
    if-nez v13, :cond_4

    .line 297
    const-string v13, "UTF-8"

    .line 301
    :cond_4
    const-string v11, "{inputEncoding}"

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 302
    if-eqz v15, :cond_5

    .line 303
    const-string v11, "{inputEncoding}"

    invoke-virtual {v15, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 306
    :cond_5
    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/String;

    aput-object v5, v11, v4

    aput-object v7, v11, v6

    const/4 v4, 0x2

    aput-object v9, v11, v4

    const/4 v4, 0x3

    aput-object v8, v11, v4

    const/4 v4, 0x4

    aput-object v13, v11, v4

    const/4 v4, 0x5

    aput-object v15, v11, v4

    move-object v4, v11

    .line 308
    .local v4, "datas":[Ljava/lang/String;
    new-instance v6, Lcom/mediatek/common/search/SearchEngine;

    invoke-direct {v6, v3, v4}, Lcom/mediatek/common/search/SearchEngine;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 310
    .local v6, "newInstance":Lcom/mediatek/common/search/SearchEngine;
    return-object v6

    .line 277
    .end local v4    # "datas":[Ljava/lang/String;
    .end local v6    # "newInstance":Lcom/mediatek/common/search/SearchEngine;
    .end local v8    # "engineSearchUri":Ljava/lang/String;
    .end local v10    # "locale":Ljava/util/Locale;
    .end local v12    # "language":Ljava/lang/StringBuilder;
    .end local v14    # "language_str":Ljava/lang/String;
    .restart local v11    # "engineSearchUri":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has an empty search URI"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 261
    .end local v3    # "engineName":Ljava/lang/String;
    .end local v5    # "engineLabel":Ljava/lang/String;
    .end local v7    # "engineKeyword":Ljava/lang/String;
    .end local v9    # "engineFavicon":Ljava/lang/String;
    .end local v11    # "engineSearchUri":Ljava/lang/String;
    .end local v13    # "engineEncoding":Ljava/lang/String;
    .end local v15    # "engineSuggestUri":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Field Missing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 251
    .end local v1    # "sp":Ljava/lang/String;
    .end local v2    # "configData":[Ljava/lang/String;
    .restart local p1    # "sp":Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty config info"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public getFaviconUri()Ljava/lang/String;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/mediatek/common/search/SearchEngine;->getSearchUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/common/search/SearchEngine;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/mediatek/common/search/SearchEngine;->getSuggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/common/search/SearchEngine;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/mediatek/common/search/SearchEngine;->getSuggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchEngine{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 240
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/common/search/SearchEngine;->mSearchEngineData:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 242
    return-void
.end method
