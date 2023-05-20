import CustomImage from './CustomImage'

export default function HeroSection() {
  const image = [
    "/img/gallery/img_1.jpg",
    "/img/gallery/img_2.jpg",
    "/img/gallery/img_3.jpg",
    "/img/gallery/img_4.jpg",
    "/img/gallery/img_5.jpg",
    "/img/gallery/img_6.jpg",
    "/img/gallery/img_7.jpg",
    "/img/gallery/img_8.jpg",
    "/img/gallery/img_9.jpg",
  ]
  return (
    <div className="section hero">
      <div className="col typography">
        <h1 className="title">
          What are we about
        </h1>
        <p className="info">
        Replate: The Recipe Waste Solution - Transforming Leftovers into Culinary Delights, Reducing Food Waste for a Sustainable Future!
        </p>
        <button className="btn">
          Explore Now
        </button>
      </div>
      <div className="col gallery">
        {image.map((src, index) => (
          <CustomImage key={index} imgSrc={src} pt={"90%"} />
        ))}
      </div>
    </div>
  )
}
